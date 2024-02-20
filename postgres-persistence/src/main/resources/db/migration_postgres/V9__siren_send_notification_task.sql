INSERT INTO
  public.meta_task_def ("name", json_data)
VALUES
(
    'send_notification_task',
    json_build_object(
      'createTime', EXTRACT(epoch FROM CURRENT_TIMESTAMP)::bigint * 1000,
      'createdBy' ,'',
      'accessPolicy', jsonb '{}',
      'name' ,'send_notification_task',
      'description' ,'Send Notification Task',
      'retryCount' ,5,
      'timeoutSeconds' ,3600,
      'inputKeys' , jsonb '[]',
      'outputKeys' , jsonb '[]',
      'timeoutPolicy' ,'TIME_OUT_WF',
      'retryLogic' ,'EXPONENTIAL_BACKOFF',
      'retryDelaySeconds' ,10,
      'responseTimeoutSeconds' ,600,
      'inputTemplate', jsonb '{}',
      'rateLimitPerFrequency' ,0,
      'rateLimitFrequencyInSeconds' ,1,
      'ownerEmail' ,'admin@sirenapp.io',
      'backoffScaleFactor' ,1
    )
  );
  