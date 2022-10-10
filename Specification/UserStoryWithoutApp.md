# Sleeplog user story without app


### How Sleeplog looks like without app
The user keeps a daily Sleeplog (sleep diary) in the following format:<br>
<br>
Сон сегодня ночью (UTC+1):<br>
Подготовка: 3.8⭐️;<br>
Лег в: 21:15;<br>
Засыпание: 5⭐️;<br>
Промежутки: (21:35; 7:43]...;<br>
Время: 608 минут;<br>
Качество: 4.9⭐️;<br>
Гипногоия: -;<br>
Засыпал: 20 минут;<br>
Вмешательство: -;<br>
Медикаменты: в 21:00 Мелатонин 200мг;<br>
Комментарий: null;<br>
<br>
Сон сегодня ночью (UTC+1):<br>
Подготовка: 3.4⭐️;<br>
Лег в: 20:24;<br>
Засыпание: 4.0⭐️;<br>
Промежутки: (22:00; 3:10] + -- + (6:00; 8:00];<br>
Время: 430 минут;<br>
Качество: 3.7⭐️;<br>
Засыпал: null минут;<br>
Медикаменты: в 22:00 Мелатонин 200мг;<br>
Гипногоия: +;<br>
Вмешательство: +;<br>
Комментарий:<br>
большой пробел по середине;
засыпал долго, при засыпании вмешивался в процесс засыпания,<br>
пробовал помочь себе уснуть, но мыли мешали, я пробовал расслабиться, но долго не получалось;<br>
<br>
Сон сегодня ночью (UTC+1):<br>
Подготовка: 4.0⭐️;<br>
Лег в: 20:43;<br>
Засыпание: 4.6⭐️;<br>
Промежутки: (21:50; 7:43]-;<br>
Время: 593 минут;<br>
Качество: 4.8⭐️;<br>
Засыпал: null минут;<br>
Медикаменты: null;<br>
Гипногоия: -;<br>
Вмешательство: -;<br>
Комментарий: полюции;<br>
<br>
The user makes records in a file or chat (telegram) or notebook.<br>

### Process of forming the Sleeplog without app

1. The user prepares for sleep.
For example:
   - goes to shower
   - brush the teeth
   - maybe taking pills
   - maybe praying or doing some other rituals
   - ...
2. The user goes to bed and takes a screenshot on his phone with the current time on it,<br>
this means that he went to bed at that time.<br>
<img src="https://user-images.githubusercontent.com/45210795/194901951-b0f448a1-93c8-487e-b49c-0d6371e8d62b.png" width="30%"><br>
3. If the user has not fallen asleep for some tangible period of time (20 - 30 minutes),<br>
then he makes one more screenshot on his phone with the current time on it.<br>
<img src="https://user-images.githubusercontent.com/45210795/194905486-4b87ecda-863d-4e2a-8d86-e8de0b408bc8.png" width="60%"><br>
4. Then maybe at some moment of time the user fell asleep.<br>
Approximately last screenshot time + period of screenshot making divided by 2.<br>
5. If the user woke up for a short period of time<br>
(for example, went to the toilet and then quickly fell asleep, or accidentally woke up and then quickly fell asleep)<br>
then he doesn't do enithing with phone.
6. If the user woke up and has not fallen asleep for some tangible period of time<br>
then he makes one more screenshot on his phone with the current time on it.<br>
<img src="https://user-images.githubusercontent.com/45210795/194906356-90e0a439-3a8d-4960-ab25-980fb7f1f44e.png" width="30%"><br>
7. Then maybe at some moment of time the user fell asleep.<br>
Approximately last screenshot time + period of screenshot making divided by 2.<br>
8. Then the user wakes up and makes one more screenshot on his phone with the current time on it.<br>
<img src="https://user-images.githubusercontent.com/45210795/194911039-2e3d87f2-f8f5-4787-a89c-b813ddca0d69.png" width="30%"><br>
9. After some time user makes a new record in his Sleeplog.<br>
<br>
Сон сегодня ночью (UTC+1):  <sub><sup>this line shows the user's current time zone</sub></sup><br>
Подготовка: 4.5⭐️;  <sub><sup>this line shows an estimation of the quality of preparation for sleep</sub></sup><br>
Лег в: 20:42;  <sub><sup>this line shows the time when the user went to bed (the user takes the value from a screenshot)</sub></sup><br>
Засыпание: 3.8⭐️;  <sub><sup>this line shows an estimation of the quality of falling asleep process (how comfortable, calm, fast the process is)</sub></sup><br>

Промежутки: (22:22; 1:38). + (2:00; 7:55]..-; <sub><sup>this line shows the time intervals in which a user slept (details below)</sub></sup><br>
Время: 551 минут;  <sub><sup>this line shows the total amount of time the user slept</sub></sup><br>
Качество: 3.7⭐️;  <sub><sup>this line shows an estimation of the quality of the sleep process (how comfortable, calm, long the process is)</sub></sup><br>
Засыпал: null минут;<br>  <sub><sup>this line shows the amount of time during which the user fell asleep</sub></sup><br>
Медикаменты: в 22:00 Мелатонин 200мг;  <sub><sup>this line shows the medicines the user took and at what time he took it</sub></sup><br>
Гипногоия: +;  <sub><sup>this line indicates the presence or absence of hypnagogia during the user's sleep</sub></sup><br>
Вмешательство: -;  <sub><sup>this line indicates whether the user was influencing the falling asleep process (whether the user tried to speed up falling asleep or to calm the mind in the process of falling asleep)</sub></sup><br>
Комментарий: полюции;  <sub><sup>this line shows the user's comments</sub></sup><br>
<br>
The line with time intervals carries more information than it seems at first glance.<br>
The Round parenthese in the interval boundary indicates that the time for the interval boundary is an estimate, not an exact value.<br>
The Square bracket at the interval boundary indicates that the time for the interval boundary is an exact value.<br>
A dot after a time interval means that there was a small sleep gap inside the interval for which the user did not take a screenshot.<br>
A hyphen after a time interval means that there was a superficial sleep within the interval for some unknown time.<br>
A hyphen without interval means that there was a superficial sleep for some unknown time.<br>
<br>
If the field value is null, it means that the user did not want to fill in the fields<br>
<br>
If the user has not fallen asleep, the sleep time interval can be specified as follows: (;);<br>
<br>
### User wishes

Features for [MVP](https://en.wikipedia.org/wiki/Minimum_viable_product):<br>
1. The user wants to automate some part of the processes of making Sleeplog (calculations).<br>
2. The user wants to be able to view statistics of sleep parameters in a convenient form (data visualization).<br>
3. The user wants to note down the time when he does not sleep in an easier way, for example, by pressing a physical button on the phone.<br>
4. The user wants to be able to set which of the optional sleep parameters he will enter every day and which not (set the checkboxes in settings).<br>
<br>
Features for the following app versions:<br>
1. The user wants to store his Sleeplog in the cloud (on the remote server).<br>
2. The user wants to be able to add new previously unknown parameters for sleep evaluation and have a set of different types of such parameters for sleep evaluation. (Boolean, Enum, Number, Percent, Percentage ratio like 90%:10%, String, Time, Score on a five-point scale, Score on a ten-point scale, Score on a ?-point scale, Photo).<br>
3. The user wants to expand the set of sleep parameters by adding new devices that can read new body or environment parameters (heart rate, body temperature...).<br>
4. The user wants to find dependencies between different sleep parameters.<br>
5. The user wants to get the best advice from a sleep specialist based on his sleep data.<br>
6. The user wants to be part of the app users community, share and get best practices, tips, and recommendations.<br>
7. The user wants to share his sleepy successes among the app community and on social networks.<br>




