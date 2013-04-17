.class final Lpr;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lpo$c;


# direct methods
.method constructor <init>(Lpo$c;)V
    .locals 0

    iput-object p1, p0, Lpr;->a:Lpo$c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const v5, 0x7f0b0b46

    const v4, 0x7f0b0b45

    const/4 v3, 0x0

    const v2, 0x7f0b0b47

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lpr;->a:Lpo$c;

    iput-object v3, v6, Lpo$c;->j:Ljava/lang/String;

    iput-object v3, v6, Lpo$c;->k:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->d:Lpo$b;

    iget-object v0, v0, Lpo$b;->a:LQQPIM/UrlCheckResponse;

    invoke-virtual {v0}, LQQPIM/UrlCheckResponse;->getMainHarmId()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lpo$c;->d:Lpo$b;

    iget-object v0, v0, Lpo$b;->a:LQQPIM/UrlCheckResponse;

    invoke-virtual {v0}, LQQPIM/UrlCheckResponse;->getMainHarmId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, v6, Lpo$c;->d:Lpo$b;

    iget-object v0, v0, Lpo$b;->a:LQQPIM/UrlCheckResponse;

    invoke-virtual {v0}, LQQPIM/UrlCheckResponse;->getMainHarmId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    const-string v0, "com.android.browser.BrowserActivity"

    iget-object v1, v6, Lpo$c;->m:Lpo;

    iget-object v1, v1, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_0
    const-string v1, "com.google.android.browser"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    if-nez v1, :cond_0

    :try_start_1
    const-string v2, "com.android.browser"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v0, "com.android.browser.BrowserActivity"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_3
    if-nez v1, :cond_1

    :try_start_2
    const-string v2, "com.amazon.cloud9"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v0, "com.amazon.cloud9.BrowserActivity"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file:///data/data/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lpo$c;->m:Lpo;

    iget-object v4, v4, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/files/redirect.html"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "query"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1480

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "create_new_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v6, Lpo$c;->m:Lpo;

    iget-object v1, v1, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Lpo$c;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    iget-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;

    iget-object v1, v6, Lpo$c;->m:Lpo;

    iget-object v1, v1, Lpo;->e:Landroid/content/Context;

    iget-object v2, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v3, v6, Lpo$c;->k:Ljava/lang/String;

    iget-object v4, v6, Lpo$c;->i:Ljava/lang/String;

    iget-object v5, v6, Lpo$c;->g:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;)V

    iput-object v0, v6, Lpo$c;->f:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;

    iget-object v0, v6, Lpo$c;->f:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;->showDialog()V

    :goto_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lps;

    invoke-direct {v1, v6}, Lps;-><init>(Lpo$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b48

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b4a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b4b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b4c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b4d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b4e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b4f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b50

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b51

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b52

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->j:Ljava/lang/String;

    iget-object v0, v6, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    const v1, 0x7f0b0b53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lpo$c;->k:Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    goto/16 :goto_2

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v6}, Lpo$c;->a()V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v6}, Lpo$c;->a()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lpr;->a:Lpo$c;

    invoke-static {v0}, Lpo$c;->a(Lpo$c;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
