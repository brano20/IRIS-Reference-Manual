function helpStruct = updateContentsFile(contentsFile, helpPrefix)

contentsFile = which(contentsFile, '-all');
if numel(contentsFile)~=1
    error( 'GitBook:InvalidContentsFile', ...
           'Invalid or ambiguous contents file: %s', ...
           contentsFile );
end
contentsFile = contentsFile{1};
contentsFile = regexprep(contentsFile, '%.*', '');
c = file2char(contentsFile);

helpStruct = struct( );

getH1DescriptionFunc = @getH1Description;
c = regexprep( c, ...
               '^%   (\w+)([ ]+)- .*?$', ...
               '%   $1$2- ${getH1DescriptionFunc(helpPrefix, $1)}', ...
               'LineAnchors' );

char2file(c, contentsFile);
clear(contentsFile);

return


    function h1Description = getH1Description(helpPrefix, functionName)
        helpPath = [helpPrefix, functionName];
        h = help(helpPath);
        if isempty(h)
            error( 'GitBook:FunctionNotFound', ...
                   'Help not found for this function or method: %s', ...
                   [helpPrefix, functionName] );
        end
        h = regexprep(h, '^Help for.*?\n', '', 'LineAnchors');
        h = regexprep(h, '^  ', '', 'LineAnchors');
        h1 = regexp(h, '^[^\n]*', 'Match', 'Once');
        if ~isempty(h1) && h1(end)=='.'
            h1(end) = '';
        end
        h2 = regexprep(h, '^.*?\n', '', 'Once');
        h1Description = regexprep(h1, '^[\w\.]+[ ]+', '');
        helpStruct.(functionName) = h2;
    end%
end%

