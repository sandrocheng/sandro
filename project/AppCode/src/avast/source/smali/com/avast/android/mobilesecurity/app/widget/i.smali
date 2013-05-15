.class Lcom/avast/android/mobilesecurity/app/widget/i;
.super Ljava/lang/Object;
.source "WidgetControlProvider.java"

# interfaces
.implements Lcom/avast/android/generic/ui/ad;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/t;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->a:Lcom/avast/android/mobilesecurity/t;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    .line 254
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->a:Lcom/avast/android/mobilesecurity/t;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V

    .line 255
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/i;->c:Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    .line 260
    return-void
.end method
