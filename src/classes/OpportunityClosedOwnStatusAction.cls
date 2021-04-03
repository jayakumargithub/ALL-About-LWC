/**
 * Created by priya on 02/04/2021.
 */

public with sharing class OpportunityClosedOwnStatusAction {
        public static void CreateTasks(Map<Id,SObject> opportunities){
            System.debug('OpportunityClosedOwnStatusAction.CreateTasks executed');
            List<TaskService.TaskModel> taskModel = new List<TaskService.TaskModel>();
            for(Opportunity opportunity : (List<Opportunity>)opportunities.values()){
                if(opportunity.StageName == Constants.ClosedOwn){
                    TaskService.TaskModel model = new TaskService.TaskModel();
                    model.Subject = 'Opportunity Closed own';
                    model.OwnerId = opportunity.OwnerId;
                    model.WhatId = opportunity.Id;
                    taskModel.add(model);
                }
            }
            TaskService.CreateTasks(taskModel);
        }
}