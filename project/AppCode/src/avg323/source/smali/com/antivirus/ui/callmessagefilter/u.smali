.class Lcom/antivirus/ui/callmessagefilter/u;
.super Lcom/antivirus/ui/callmessagefilter/y;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method varargs constructor <init>(Lcom/antivirus/ui/callmessagefilter/j;[Landroid/widget/CheckBox;)V
    .locals 6

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/u;->a:Lcom/antivirus/ui/callmessagefilter/j;

    const-string v1, "call_message_blocker_trusted_list"

    const v2, 0x7f0901f2

    const v3, 0x7f0200dd

    const v4, 0x7f0901f9

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/y;-><init>(Ljava/lang/String;III[Landroid/widget/CheckBox;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 0

    invoke-static {}, Lcom/antivirus/c;->s()V

    return-void
.end method
