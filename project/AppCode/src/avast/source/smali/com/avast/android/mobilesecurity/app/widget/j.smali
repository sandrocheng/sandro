.class Lcom/avast/android/mobilesecurity/app/widget/j;
.super Landroid/os/AsyncTask;
.source "WidgetControlProvider.java"


# instance fields
.field private a:Landroid/appwidget/AppWidgetManager;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/widget/j;->a:Landroid/appwidget/AppWidgetManager;

    .line 54
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/widget/j;->b:Landroid/content/Context;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/widget/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/widget/j;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/widget/RemoteViews;
    .locals 2
    .parameter

    .prologue
    .line 59
    const-string v0, "WidgetControlProvider"

    const-string v1, "Asynchronously updating widget."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->b(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method protected a(Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/j;->b:Landroid/content/Context;

    const-class v2, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/j;->a:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 68
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/widget/j;->a([Ljava/lang/Void;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    check-cast p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/widget/j;->a(Landroid/widget/RemoteViews;)V

    return-void
.end method
