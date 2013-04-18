.class final Lcom/jxphone/mosecurity/logic/q;
.super Ljava/lang/Object;
.source "PhoneCallWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/q;->a:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/q;->a:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->finish()V

    .line 70
    return-void
.end method
