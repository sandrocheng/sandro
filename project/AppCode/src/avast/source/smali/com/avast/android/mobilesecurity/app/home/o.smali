.class Lcom/avast/android/mobilesecurity/app/home/o;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/home/StartActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/StartActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/o;->a:Lcom/avast/android/mobilesecurity/app/home/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/o;->a:Lcom/avast/android/mobilesecurity/app/home/StartActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/StartActivity;->finish()V

    .line 57
    return-void
.end method
