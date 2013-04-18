.class final Lcom/keniu/security/software/ad;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/keniu/security/software/ad;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 758
    iget-object v0, p0, Lcom/keniu/security/software/ad;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->x(Lcom/keniu/security/software/SoftwareManager2;)V

    .line 759
    iget-object v0, p0, Lcom/keniu/security/software/ad;->a:Lcom/keniu/security/software/SoftwareManager2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keniu/security/software/SoftwareManager2;->removeDialog(I)V

    .line 760
    return-void
.end method
