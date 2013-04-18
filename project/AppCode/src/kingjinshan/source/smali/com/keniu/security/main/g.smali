.class final Lcom/keniu/security/main/g;
.super Landroid/os/Handler;
.source "DubaDownload.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/f;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SD\u5361\u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(I)V

    .line 72
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/hoi/widget/q;->c(I)V

    .line 73
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0316

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/hoi/widget/q;->a(Z)V

    goto/16 :goto_0

    .line 80
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->c(Lcom/keniu/security/main/f;)Z

    .line 81
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u53d6\u6d88\u4e0b\u8f7d"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 87
    :pswitch_4
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->c(I)V

    goto/16 :goto_0

    .line 92
    :pswitch_5
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 98
    :pswitch_6
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 101
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->e(Lcom/keniu/security/main/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x37

    const/high16 v3, 0x1000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/keniu/security/MoSecurityApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 111
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02013f

    const-string v4, "\u91d1\u5c71\u624b\u673a\u536b\u58eb\u63d0\u793a\u60a8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 114
    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 115
    iget-object v3, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u91d1\u5c71\u624b\u673a\u536b\u58eb\u63d0\u793a\u60a8"

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 119
    const/16 v1, 0x88

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/main/g;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
