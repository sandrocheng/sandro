.class final Lcom/keniu/security/main/x;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/keniu/security/main/x;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 972
    iget-object v0, p0, Lcom/keniu/security/main/x;->a:Lcom/keniu/security/main/MainActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 974
    return-void
.end method
