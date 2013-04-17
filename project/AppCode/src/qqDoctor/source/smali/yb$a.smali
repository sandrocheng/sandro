.class final Lyb$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lyb;


# direct methods
.method private constructor <init>(Lyb;)V
    .locals 0

    iput-object p1, p0, Lyb$a;->a:Lyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyb;B)V
    .locals 0

    invoke-direct {p0, p1}, Lyb$a;-><init>(Lyb;)V

    return-void
.end method


# virtual methods
.method public final getLockPhoneIntent()Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->e(Lyb;)Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->C(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "sim_change"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lyb$a;->a:Lyb;

    invoke-static {v1}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public final tips4DeleteDataSuccess()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tips4DeletingData()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tips4GetPasswordFailed()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tips4GetPasswordSuccess()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lyb$a;->a:Lyb;

    invoke-static {v3}, Lyb;->e(Lyb;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->bT()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lyb$a;->a:Lyb;

    invoke-static {v3}, Lyb;->b(Lyb;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getPassword()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tips4LocateFaild()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tips4LocateSuccess()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final tips4Locating()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tips4LockPhoneSuccess()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tips4PasswordError()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyb$a;->a:Lyb;

    invoke-static {v0}, Lyb;->d(Lyb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b07ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
