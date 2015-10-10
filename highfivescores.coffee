scoresList = document.createElement('ol')
ref = new Firebase('https://austin2to5cerner2015.firebaseio.com//users')
highFiveTimes = []

updateTableFromArray = ->
  scoresList.innerHTML = ''

  # Sort the array of scores
  sortedTimes = highFiveTimes.sort((a, b) -> parseFloat(a.fastestTime) - parseFloat(b.fastestTime))

  for scoreItem in sortedTimes
    do (scoreItem) ->
      newItem = document.createElement('li')
      newItem.innerHTML = scoreItem.name + ' &rarr; ' + scoreItem.fastestTime
      scoresList.appendChild(newItem)

  return

UpdateFastTimeArray = (inName, inTime) ->
  i = 0
  while i < highFiveTimes.length
    if highFiveTimes[i].name == inName.toString()
      highFiveTimes[i] =
        name: inName.toString()
        fastestTime: inTime
      break
    i++

  if i == highFiveTimes.length
    highFiveTimes.push
      name: inName.toString()
      fastestTime: inTime

  updateTableFromArray()

  return

scoresList.setAttribute 'id', 'firsthandscores'
document.body.appendChild scoresList

# Start listening to FireBase for additions and changes
ref.on 'child_added', (snapshot) -> UpdateFastTimeArray snapshot.key(), snapshot.val().fastestTime
ref.on 'child_changed', (snapshot) -> UpdateFastTimeArray snapshot.key(), snapshot.val().fastestTime
