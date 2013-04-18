.class final Lcom/keniu/security/importx/d;
.super Ljava/lang/Object;
.source "BaseImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/BaseImportActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/BaseImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/keniu/security/importx/d;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/keniu/security/importx/d;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-virtual {v0}, Lcom/keniu/security/importx/BaseImportActivity;->finish()V

    .line 125
    return-void
.end method
