function [helpStruct, descriptionStruct] = updateContentsFile(contentsFile, helpPrefix)

contentsFile = gitbook.whichFile(contentsFile);
c = file2char(contentsFile);

helpStruct = struct( );
descriptionStruct = struct( );

getDescription = @hereGetDescription;
c = regexprep( c, ...
               '^%   (\w+)([ ]+)- .*?$', ...
               '%   $1$2- ${getDescription(helpPrefix, $1)}', ...
               'LineAnchors' );

char2file(c, contentsFile);
clear(contentsFile);

return


    function description = hereGetDescription(helpPrefix, functionName)
        helpPath = [helpPrefix, functionName];
        h = help(helpPath);

        if isempty(h)
            error( 'GitBook:FunctionNotFound', ...
                   'Help not found for this function or method: %s', ...
                   [helpPrefix, functionName] );
        end
        % Delete all lines that do not start with a double space
        % This includes
        % ^Help for XXX is inherited from superclass YYY
        % ^{ (fold start mark)
        % ^} (fold end mark)
        h = regexprep(h, '^[ ]?[^ \n][^\n]*\n', '', 'LineAnchors');
        h = regexprep(h, '^  ', '', 'LineAnchors');
        h1 = regexp(h, '^[^\n]*', 'Match', 'Once');
        if ~isempty(h1) && h1(end)=='.'
            h1(end) = '';
        end
        h2 = regexprep(h, '^.*?\n', '', 'Once');
        description = regexprep(h1, '^[\w\.]+[ ]+', '');
        helpStruct.(functionName) = h2;
        descriptionStruct.(functionName) = description;

        return


            function hereProcessLegacySyntax( )
                if ~isempty(regexp(h, '^  __Syntax', 'Once', 'LineAnchors'))
                    try
                        thisFile = gitbook.whichFile(helpPath);
                        s = file2char(thisFile);
                        s = regexprep(s, '^% __([^_]+)__\s*$', '% ## $1 ##', 'LineAnchors');
                        char2file(s, thisFile);
                        h = help(helpPath);
                        disp(['Updated__: ', helpPath]);
                    catch
                        disp(['Failed__: ', helpPath]);
                    end
                end
                if ~isempty(regexp(h, '^  Syntax[^\n]*\n  =====+[ ]*\n', 'Once', 'LineAnchors'))
                    try
                        thisFile = gitbook.whichFile(helpPath);
                        s = file2char(thisFile);
                        s = regexprep( s, ...
                                       '^% (\w[^\n]+)\n%[ ]?=====+[ ]*\n', ...
                                       '% ## $1 ##\n', ...
                                       'LineAnchors' );
                        char2file(s, thisFile);
                        h = help(helpPath);
                        disp(['Updated==: ', helpPath]);
                    catch
                        disp(['Failed==: ', helpPath]);
                    end
               end
            end%
    end%
end%

