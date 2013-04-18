.class final Lcom/keniu/security/g/o;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/g/n;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/n;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/keniu/security/g/o;->a:Lcom/keniu/security/g/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/keniu/security/g/o;->a:Lcom/keniu/security/g/n;

    invoke-static {v0}, Lcom/keniu/security/g/n;->a(Lcom/keniu/security/g/n;)Z

    .line 533
    iget-object v0, p0, Lcom/keniu/security/g/o;->a:Lcom/keniu/security/g/n;

    iget-object v0, v0, Lcom/keniu/security/g/n;->a:Lcom/keniu/security/f/t;

    invoke-virtual {v0}, Lcom/keniu/security/f/t;->f()V

    .line 534
    return-void
.end method
