.class final Lcom/keniu/security/util/s;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/util/z;


# direct methods
.method constructor <init>(Lcom/keniu/security/util/z;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/keniu/security/util/s;->a:Lcom/keniu/security/util/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/keniu/security/util/s;->a:Lcom/keniu/security/util/z;

    invoke-interface {v0}, Lcom/keniu/security/util/z;->a()V

    .line 127
    return-void
.end method
