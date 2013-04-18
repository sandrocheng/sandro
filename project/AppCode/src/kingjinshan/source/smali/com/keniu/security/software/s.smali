.class final Lcom/keniu/security/software/s;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/keniu/security/software/s;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 773
    iget-object v0, p0, Lcom/keniu/security/software/s;->a:Lcom/keniu/security/software/SoftwareManager2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->removeDialog(I)V

    .line 774
    return-void
.end method
