.class final Lcom/keniu/security/protection/ui/ai;
.super Ljava/lang/Object;
.source "PreventTheftSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/keniu/security/protection/ui/ai;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/keniu/security/protection/ui/ai;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 394
    iget-object v0, p0, Lcom/keniu/security/protection/ui/ai;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/ai;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/ai;->a:Landroid/content/Context;

    const v3, 0x7f0b07b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v1, v2, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 397
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/ui/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->t(Landroid/content/Context;)V

    .line 398
    :cond_0
    return-void
.end method
