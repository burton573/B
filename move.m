function [tower, result] = move(tower, from_col , to_col);
%Remember: only one ring at a time, only the top ring can move,A ring can
%be placed on top of a larger ring.
from = ['Peg',num2str(from_col)];
to = ['Peg',num2str(to_col)];
result = 0;
%time for some stuff to happen
if ~isempty(tower.(from)) && (isempty(tower.(to)) || tower.(from){end}.Size < tower.(to){end}.Size)
    tower.(to){end+1} = tower.(from){end} ;
    tower.(from)(end) = [];
    if isempty(tower.Peg1) && isempty(tower.Peg2)
        result = 1;
    end
else
    result = -1;
end