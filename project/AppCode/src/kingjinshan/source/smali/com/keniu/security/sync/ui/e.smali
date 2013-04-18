.class final Lcom/keniu/security/sync/ui/e;
.super Ljava/lang/Object;
.source "DialogAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/DialogAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/DialogAct;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/keniu/security/sync/ui/e;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/keniu/security/sync/ui/e;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->finish()V

    .line 109
    return-void
.end method
