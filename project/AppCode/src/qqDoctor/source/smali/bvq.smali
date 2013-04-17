.class final Lbvq;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lbvp$a;


# direct methods
.method constructor <init>(Lbvp$a;)V
    .locals 0

    iput-object p1, p0, Lbvq;->a:Lbvp$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v1, p0, Lbvq;->a:Lbvp$a;

    invoke-static {v1}, Lbvp$a;->a(Lbvp$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lbvq;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/tencent/tmsecure/utils/DualSimCallUtil;->getCallState(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbvq;->a:Lbvp$a;

    invoke-static {v1}, Lbvp$a;->b(Lbvp$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    if-nez v0, :cond_4

    const-string v0, "null"

    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lbvq;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
