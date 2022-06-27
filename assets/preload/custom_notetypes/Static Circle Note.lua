function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Circle Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'STATICCIRCLENOTE_assets'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Health gained on note hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '5'); --Health lost on note miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true); --If you make a punishing note, set this to true to cause a miss to be added when this note is hit. Otherwise, set this to false.

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --If you make a punishing note, set this to true to cause a miss to be added when this note is hit. Otherwise, set this to false.
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Static Circle Note' then
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Static Circle Note' then
	end
end