.class final Lcom/keniu/security/g/f;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/f/v;

.field final synthetic b:Lcom/keniu/security/f/t;

.field final synthetic c:Lcom/keniu/security/g/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/keniu/security/g/f;->c:Lcom/keniu/security/g/a;

    iput-object p2, p0, Lcom/keniu/security/g/f;->a:Lcom/keniu/security/f/v;

    iput-object p3, p0, Lcom/keniu/security/g/f;->b:Lcom/keniu/security/f/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/keniu/security/g/f;->c:Lcom/keniu/security/g/a;

    iget-object v1, p0, Lcom/keniu/security/g/f;->a:Lcom/keniu/security/f/v;

    iget-object v2, p0, Lcom/keniu/security/g/f;->b:Lcom/keniu/security/f/t;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;Lcom/keniu/security/f/v;Lcom/keniu/security/f/t;Z)V

    .line 463
    return-void
.end method
