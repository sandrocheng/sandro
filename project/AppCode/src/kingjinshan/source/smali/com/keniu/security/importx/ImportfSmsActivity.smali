.class public Lcom/keniu/security/importx/ImportfSmsActivity;
.super Lcom/keniu/security/importx/BaseImportActivity;
.source "ImportfSmsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/keniu/security/importx/BaseImportActivity;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/importx/ImportfSmsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/keniu/security/importx/ImportfSmsActivity;->i:Z

    return v0
.end method


# virtual methods
.method protected final e()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0b0446

    return v0
.end method

.method protected final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0b06a6

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final n()Lcom/keniu/security/importx/k;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/keniu/security/importx/r;

    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->f(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/m;

    move-result-object v1

    invoke-interface {v1}, Lcom/jxphone/mosecurity/logic/a/m;->a()[Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/keniu/security/importx/r;-><init>(Lcom/keniu/security/importx/ImportfSmsActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/importx/ImportfSmsActivity;->j:Z

    .line 26
    invoke-super {p0, p1}, Lcom/keniu/security/importx/BaseImportActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0b0446

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 29
    return-void
.end method
