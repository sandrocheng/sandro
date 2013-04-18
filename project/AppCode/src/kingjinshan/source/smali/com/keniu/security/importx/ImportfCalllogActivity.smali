.class public Lcom/keniu/security/importx/ImportfCalllogActivity;
.super Lcom/keniu/security/importx/BaseImportActivity;
.source "ImportfCalllogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/keniu/security/importx/BaseImportActivity;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/importx/ImportfCalllogActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/keniu/security/importx/ImportfCalllogActivity;->i:Z

    return v0
.end method


# virtual methods
.method protected final e()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0b0445

    return v0
.end method

.method protected final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0b06a5

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfCalllogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final n()Lcom/keniu/security/importx/k;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/keniu/security/importx/n;

    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->e(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/jxphone/mosecurity/logic/a/k;->a()[Lcom/jxphone/mosecurity/c/j;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/keniu/security/importx/n;-><init>(Lcom/keniu/security/importx/ImportfCalllogActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/importx/ImportfCalllogActivity;->j:Z

    .line 31
    invoke-super {p0, p1}, Lcom/keniu/security/importx/BaseImportActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfCalllogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0b0445

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 34
    return-void
.end method
