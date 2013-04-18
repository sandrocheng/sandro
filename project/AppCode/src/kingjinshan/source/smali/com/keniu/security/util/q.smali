.class final Lcom/keniu/security/util/q;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/util/w;


# direct methods
.method constructor <init>(Lcom/keniu/security/util/w;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/keniu/security/util/q;->a:Lcom/keniu/security/util/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/keniu/security/util/q;->a:Lcom/keniu/security/util/w;

    invoke-interface {v0}, Lcom/keniu/security/util/w;->b()V

    .line 95
    return-void
.end method
