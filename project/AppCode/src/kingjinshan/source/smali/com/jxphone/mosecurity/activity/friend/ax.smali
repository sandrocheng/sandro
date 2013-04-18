.class final Lcom/jxphone/mosecurity/activity/friend/ax;
.super Landroid/content/BroadcastReceiver;
.source "FriendSmsActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jxphone/mosecurity/activity/friend/ax;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ax;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 532
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 534
    const-string v1, "com.conew.mosecurity.ACTION_CHECK_PWD_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 537
    return-void
.end method

.method final b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 545
    const-string v0, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ax;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const-string v0, "com.conew.mosecurity.ACTION_CHECK_PWD_END"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ax;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    const-string v1, "isDummy"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Z)Z

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ax;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    const-string v1, "FriendCallLogActivity>>CallLogBroadcastReceiver"

    const-string v2, ">.onReceive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
