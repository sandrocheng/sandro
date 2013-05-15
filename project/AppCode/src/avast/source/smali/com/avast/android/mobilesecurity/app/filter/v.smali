.class Lcom/avast/android/mobilesecurity/app/filter/v;
.super Ljava/lang/Object;
.source "LGWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/filter/LGWarningDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/LGWarningDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/v;->b:Lcom/avast/android/mobilesecurity/app/filter/LGWarningDialog;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/v;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/v;->a:Landroid/content/Context;

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 73
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/filter/LGWarningDialog;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 75
    return-void
.end method
