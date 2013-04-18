.class final Lcom/ijinshan/software/recommand/a;
.super Landroid/os/Handler;
.source "FileDownloadService.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/software/recommand/FileDownloadService;


# direct methods
.method constructor <init>(Lcom/ijinshan/software/recommand/FileDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0x10

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 178
    iget-object v0, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->d(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->stopService(Landroid/content/Intent;)Z

    .line 181
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ijinshan/software/recommand/c;

    .line 152
    iget-object v1, v0, Lcom/ijinshan/software/recommand/c;->g:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 158
    iget-object v3, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 159
    iget-object v3, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    const v6, 0x7f0b03f0

    invoke-virtual {v5, v6}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 160
    iget-object v3, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    iget-object v4, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    iget-object v5, v0, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    const v7, 0x7f0b03ef

    invoke-virtual {v6, v7}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    iget-object v1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->a(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget v3, v0, Lcom/ijinshan/software/recommand/c;->a:I

    iget-object v4, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 163
    iget-object v1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->b(Lcom/ijinshan/software/recommand/FileDownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-virtual {v0, v2}, Lcom/ijinshan/software/recommand/FileDownloadService;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ijinshan/software/recommand/c;

    .line 169
    iget-object v1, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 170
    iget-object v1, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    const v4, 0x7f0b03ee

    invoke-virtual {v3, v4}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 171
    iget-object v1, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    iget-object v2, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    iget-object v3, v0, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    const v5, 0x7f0b03ed

    invoke-virtual {v4, v5}, Lcom/ijinshan/software/recommand/FileDownloadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v5}, Lcom/ijinshan/software/recommand/FileDownloadService;->c(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 173
    iget-object v1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->a(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget v2, v0, Lcom/ijinshan/software/recommand/c;->a:I

    iget-object v3, v0, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 174
    iget-object v1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->b(Lcom/ijinshan/software/recommand/FileDownloadService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/a;->a:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->d(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
