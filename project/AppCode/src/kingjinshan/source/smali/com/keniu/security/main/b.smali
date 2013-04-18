.class final Lcom/keniu/security/main/b;
.super Landroid/os/Handler;
.source "BatteryDownloadProgressDialog.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/a;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const v1, 0x7f0b031a

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0, v4}, Lcom/keniu/security/main/a;->a(Lcom/keniu/security/main/a;I)I

    .line 74
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/keniu/security/main/a;->b(Lcom/keniu/security/main/a;I)I

    .line 75
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->a(Lcom/keniu/security/main/a;)Lcom/hoi/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->b(Lcom/keniu/security/main/a;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/keniu/security/main/a;->a(Lcom/keniu/security/main/a;I)I

    .line 81
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->a(Lcom/keniu/security/main/a;)Lcom/hoi/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->b(Lcom/keniu/security/main/a;)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0, v4}, Lcom/keniu/security/main/a;->b(Lcom/keniu/security/main/a;I)I

    .line 87
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0, v4}, Lcom/keniu/security/main/a;->a(Lcom/keniu/security/main/a;I)I

    .line 88
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->c(Lcom/keniu/security/main/a;)Lcom/ijinshan/battery/recommand/a;

    .line 89
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-virtual {v3}, Lcom/keniu/security/main/a;->b()V

    .line 93
    iget-object v3, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v3}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keniu/security/main/MainActivity;->b(Landroid/content/Context;)V

    .line 95
    if-nez v2, :cond_1

    .line 96
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v1}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b031b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 100
    :cond_1
    if-ne v2, v5, :cond_3

    .line 101
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->e(Lcom/keniu/security/main/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v1}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b031c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0, v5}, Lcom/keniu/security/main/a;->c(Lcom/keniu/security/main/a;I)V

    goto/16 :goto_0

    .line 132
    :cond_3
    if-ne v2, v7, :cond_4

    .line 134
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0, v7}, Lcom/keniu/security/main/a;->c(Lcom/keniu/security/main/a;I)V

    goto/16 :goto_0

    .line 136
    :cond_4
    if-ne v2, v6, :cond_6

    .line 137
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->e(Lcom/keniu/security/main/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v1}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0315

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0, v6}, Lcom/keniu/security/main/a;->c(Lcom/keniu/security/main/a;I)V

    goto/16 :goto_0

    .line 167
    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 169
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 170
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->e(Lcom/keniu/security/main/a;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/keniu/security/MoSecurityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 183
    const v2, 0x7f0b0317

    invoke-virtual {v0, v2}, Lcom/keniu/security/MoSecurityApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x122

    const v6, 0x7f020008

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/keniu/security/util/au;->a(Landroid/content/Context;IILjava/lang/String;Landroid/app/PendingIntent;II)V

    goto/16 :goto_0

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/main/b;->a:Lcom/keniu/security/main/a;

    invoke-static {v0}, Lcom/keniu/security/main/a;->d(Lcom/keniu/security/main/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
