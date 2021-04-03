/**
 * Created by priya on 02/04/2021.
 */

public with sharing class TaskService {

    public static void CreateTask(TaskModel task){
        CreateTasks(new List<TaskModel>{task});
    }
    public static void CreateTasks(List<TaskModel> taskList) {
        if (taskList.isEmpty()) return;
        List<Task> taskToInsert = new List<Task>();
        for (TaskModel t : taskList) {
            Task task = new Task();
            task.Subject = t.Subject;
            task.WhatId = t.WhatId;
            task.OwnerId = t.OwnerId;
            task.Status = Constants.NotStarted;
            task.ActivityDate = Date.today().addDays(30);
            taskToInsert.add(task);
        }
        try {
            if (taskToInsert.size() > 0) {
                Database.insert(taskToInsert);
            }
        } catch (DmlException e) {
            DMLUtility.processDmlMessage(e);
        }
    }

    public class TaskModel {
        public String Subject { get; set; }
        public String Contact { get; set; }
        public Date DueDate { get; set; }
        public String WhatId { get; set; }
        public String OwnerId { get; set; }
        public String Status { get; set; }
    }
}

