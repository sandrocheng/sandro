.class final Lbum;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lbuj$b;


# direct methods
.method constructor <init>(Lbuj$b;)V
    .locals 0

    iput-object p1, p0, Lbum;->a:Lbuj$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lbum;)Lbuj$b;
    .locals 1

    iget-object v0, p0, Lbum;->a:Lbuj$b;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/tencent/tmsecure/utils/DualSimCallUtil;->getCallState(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lbun;

    invoke-direct {v1, p0, v0}, Lbun;-><init>(Lbum;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbun;->start()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbum;->getResultData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
