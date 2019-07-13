function c = createPage(contentsFile, folder, helpPrefix)

[helpStruct, descriptionStruct] = gitbook.updateContentsFile(contentsFile, helpPrefix);

c = help(contentsFile);
if isempty(c)
    error( 'GitBook:InvalidContentsFile', ...
           'Invalid or ambiguous contents file: %s', ...
           contentsFile );
end
c = regexprep(c, '^  ', '', 'LineAnchors');
c = regexprep(c, 'Reference page in.*', '');

c = regexprep( c, ...
               '^  (\w+)([ ]+)- (.*?)$', ...
               '  [`$1`]($1.md)$2 | $3', ...
               'LineAnchors' );

c = regexprep( c, ...
               '( ###\n)-+', ...
               '$1\n  Function Name | Brief Description\n----------------|--------------------'); 


c = [ c, newline( ), newline( ), ...
      '## Alphabetical List of Functions ##' ];

char2file(c, fullfile(folder, 'README.md'));

s = file2char('SUMMARY.md');
startTag = ['<!-- Start ', contentsFile, ' -->'];
endTag = ['<!-- End ', contentsFile, ' -->'];

tkn = regexp(s, ['^([ ]*)', startTag, '.*?', endTag], 'Tokens', 'Once', 'LineAnchors');
indent = tkn{1};
a = '';

list = fieldnames(helpStruct);
[~, index] = sort(lower(list));
list = list(index);
for i = 1 : 4 % numel(list)
    functionName = list{i};
    outputFile = fullfile(folder, [functionName, '.md']);
    c = [ '# ', functionName, ' #', newline( ), ...
          descriptionStruct.(functionName), newline( ), ...
          helpStruct.(functionName) ];
    char2file(c, outputFile);
    a = [ a, indent, '* [', functionName, ']', ...
          '(', outputFile, ')', newline( ) ];
end
a = [indent, startTag, newline( ), a, indent, endTag];
s = regexprep(s, ['^[ ]*', startTag, '.*?', endTag], a, 'Once', 'LineAnchors');

char2file(s, 'SUMMARY.md');

end%

