.class final Lcom/keniu/security/protection/w;
.super Ljava/lang/Object;
.source "ScreenLockService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/commui/b;

.field final synthetic b:Lcom/keniu/security/protection/u;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/u;Lcom/keniu/security/commui/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/keniu/security/protection/w;->b:Lcom/keniu/security/protection/u;

    iput-object p2, p0, Lcom/keniu/security/protection/w;->a:Lcom/keniu/security/commui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/keniu/security/protection/w;->a:Lcom/keniu/security/commui/b;

    invoke-virtual {v0}, Lcom/keniu/security/commui/b;->c()V

    .line 277
    return-void
.end method
