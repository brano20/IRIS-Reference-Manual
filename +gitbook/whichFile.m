function fileName = whichFile(hint)

fileName = which(hint, '-all');
if numel(fileName)~=1
    error( 'GitBook:InvalidContentsFile', ...
           'Invalid or ambiguous reference to m-file: %s', ...
           fileName );
end
fileName = fileName{1};
fileName = regexprep(fileName, '%.*', '');

end%

