.class Lcom/avast/android/mobilesecurity/app/webshield/g;
.super Ljava/lang/Object;
.source "WebshieldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/g;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/g;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->finish()V

    .line 94
    return-void
.end method
