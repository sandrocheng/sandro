.class final Lcom/jxphone/mosecurity/logic/p;
.super Ljava/lang/Object;
.source "PhoneCallWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/p;->b:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    iput-object p2, p0, Lcom/jxphone/mosecurity/logic/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/p;->b:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "_PickListActivity1_black_action"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 62
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/p;->b:Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;->finish()V

    .line 63
    return-void
.end method
