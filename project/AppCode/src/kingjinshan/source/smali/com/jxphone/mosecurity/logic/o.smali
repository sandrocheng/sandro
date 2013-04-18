.class final Lcom/jxphone/mosecurity/logic/o;
.super Ljava/lang/Object;
.source "PhoneCallWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/o;->a:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/o;->a:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->finish()V

    .line 45
    return-void
.end method
