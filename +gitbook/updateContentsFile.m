function [helpStruct, descriptionStruct] = updateContentsFile(contentsFile, helpPrefix)

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
descriptionStruct = struct( );

getDescriptionFunc = @getDescription;
c = regexprep( c, ...
               '^%   (\w+)([ ]+)- .*?$', ...
               '%   $1$2- ${getDescriptionFunc(helpPrefix, $1)}', ...
               'LineAnchors' );

char2file(c, contentsFile);
clear(contentsFile);

return


    function description = getDescription(helpPrefix, functionName)
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
        description = regexprep(h1, '^[\w\.]+[ ]+', '');
        helpStruct.(functionName) = h2;
        descriptionStruct.(functionName) = description;
    end%
end%

