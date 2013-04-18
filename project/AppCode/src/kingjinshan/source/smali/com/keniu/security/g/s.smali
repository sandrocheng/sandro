.class final Lcom/keniu/security/g/s;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/g/r;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/r;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/g/s;->a:Lcom/keniu/security/g/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/keniu/security/g/s;->a:Lcom/keniu/security/g/r;

    invoke-static {v0}, Lcom/keniu/security/g/r;->a(Lcom/keniu/security/g/r;)Z

    .line 77
    iget-object v0, p0, Lcom/keniu/security/g/s;->a:Lcom/keniu/security/g/r;

    iget-object v0, v0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->f()V

    .line 78
    return-void
.end method
