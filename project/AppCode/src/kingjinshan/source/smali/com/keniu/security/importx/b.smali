.class final Lcom/keniu/security/importx/b;
.super Ljava/lang/Thread;
.source "BaseImportActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/BaseImportActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/BaseImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/keniu/security/importx/b;->a:Lcom/keniu/security/importx/BaseImportActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/keniu/security/importx/b;->a:Lcom/keniu/security/importx/BaseImportActivity;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Lcom/keniu/security/importx/BaseImportActivity;->showDialog(I)V

    .line 96
    return-void
.end method
