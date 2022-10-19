# Sleeplog project Workflow

## Intro

TODO: need to be translated.
Для проведения аналогий и улучшения понимания ведения рабочего процесса на проекте, представьте, что мы, это экипаж корабля, который хочет поплавать.
Для тех, кому больше нравися ходить по земле, чем по морю, мы - группа туристов, которая собралась погулять.
Мы хотим поплавать или погулять просто потому что нам это нравится, это основная причина.
Это значит, что мы не будем перенапрягаться во время путешествия и жертвовать своим комфортом.
Если кому-то будет сложно переносить путешествие - ему лучше отдохнуть некоторое время, поправить здоровье,
поучиться плавать с удовольствием. Еще есть вариант сойти на берег или пересесть на другой кораблик, где ему таки будет хорошо.
В мире много корабликов и все плавают по своим делам и со своим настроением на борту.
Еще вы всегда можете купить или построить свой кораблик и плавать как вашей душеньке захочется.

Мы в каждый момент времени находимся в некоторой точке. У нас либо есть направление, либо его нет, зависит от величены модуля скорости.
Если направление есть, оно направлено куда-то. Направление может быть нестабильным, мы можем его менять.
Оно зависит от многово, например: желаний, ориентиров, идей, окружающей среды, течений и ветров в море...
Мы куда-то движемся, и не всегда заранее знаем куда и к чему мы придем.
Давайте за судовой журнал брать наш репозиторий и прочую документацию,
а положение на карте - это результирующий продукт и место на рынке.

- есть направление движения.
- для упрощения восприятия и измеримости процесса делают разметку на линии направления движения:
- вдоль направления выстраивают итерационные пункты
- большого масштаба (майлстоуны, большие итерации)
- среднего масштаба (спринты, средние по величине итерации)
- задачи (маты по величине итерации, кусочки)

есть идея, описание модели (дизайн, проект).
потом реализация. На каждом подпункте нужно оценивать сложность, и коммититься (да мы сделаем в примерно такие сроки; мы не знаем сколько займет, нужно доисследование; нет мы не сделаем, это сложно, упирается в это (аргументы)...;)

## Process Structure
For the project was taken the best from a number of software development models.

### Large Scale
- Incremental Model<br>
From this development model, the idea of a gradual increment in functionality is taken.<br>
![image](https://user-images.githubusercontent.com/45210795/196042134-8272cc6d-a3b1-4098-b01d-e39ed15d71be.png)
- Iterative Model<br>
From this development model, the idea of a parallel execution of different iterations is taken.<br>
For example, when the development stage of the previous iteration is underway, it is possible<br>
to carry out the planning stage for the next iteration at the same time by distributing roles among employees.<br>

### Medium Scale
- Waterfall Model<br>
![image](https://user-images.githubusercontent.com/45210795/196038448-f67138f8-d206-4d6f-9e0e-4da8fe450762.png)<br>
estimation, buffers, commitment,
- Iterative Waterfall Model<br>


### Small Scale
Team programming
Benefits of this approach include the deficiencies in knowledge of one programmer to be compensated for by the ability in specific areas by the other programmer; in addition, the shared responsibility is thought to increase incentives for meeting project deadlines and quality targets.
In the event that one programmer stumbled on some task and his vision is clouded (the eye is blurred) and he cannot find a solution. In this case, it is very good for another programmer to connect, look at the process from the side, give his comment, give a recommendation, or immediately suggest a ready-made solution that the programmer performing the task simply does not see.

, Scrum, Tasks, Task Estimations, Sprints, Taking tasks to Sprint, PRs, Reviews.

Let's take Sprint as 1 week.

SP (Fibonacci number series)
2 SP - Tiny - Take in sprint
3 SP - Small - Take in sprint
5 SP - Medium - Take in sprint
8 SP - Large - Not take in sprint - Need to be splitted
>= 13 SP - X-Large - Not take in sprint - Need to be splitted




## Conclusion

### References
https://en.wikipedia.org/wiki/Team_programming
<br>
https://www.javatpoint.com/software-engineering-incremental-model<br>
https://en.wikipedia.org/wiki/Incremental_build_model/<br>
https://www.interviewbit.com/blog/incremental-model/<br>
https://www.guru99.com/what-is-incremental-model-in-sdlc-advantages-disadvantages.html<br>
https://www.geeksforgeeks.org/software-engineering-incremental-process-model/<br>
<br>
https://en.wikipedia.org/wiki/Iterative_and_incremental_development<br>
https://www.interviewbit.com/blog/iterative-model/<br>
<br>
https://en.wikipedia.org/wiki/Waterfall_model<br>
https://managementhelp.org/waterfall-methodology<br>
https://qaevolution.ru/metodologiya-menedzhment/waterfall/<br>
https://business.adobe.com/blog/basics/waterfall<br>
https://www.projectmanager.com/guides/waterfall-methodology<br>
<br>
https://www.geeksforgeeks.org/software-engineering-iterative-waterfall-model/<br>
https://prepinsta.com/software-engineering/iterative-waterfall-model/<br>
https://notepub.io/notes/software-engineering/software-development-life-cycle/sdlc-iterative-waterfall-model/<br>
https://www.javatpoint.com/software-engineering-iterative-model<br>
<br>
https://www.tatvasoft.com/blog/top-12-software-development-methodologies-and-its-advantages-disadvantages/<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
