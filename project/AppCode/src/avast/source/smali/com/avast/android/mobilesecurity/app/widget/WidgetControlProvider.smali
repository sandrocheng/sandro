.class public Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetControlProvider.java"


# instance fields
.field private a:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a:Landroid/os/Handler$Callback;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/avast/android/mobilesecurity/app/widget/j;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/avast/android/mobilesecurity/app/widget/j;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/widget/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 91
    const-string v1, "appWidgetIds"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0701fc

    .line 181
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 182
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const v0, 0x7f0c03f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    const v0, 0x7f0c03f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ZZZZLandroid/widget/RemoteViews;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0701f2

    const v2, 0x7f0701f1

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 203
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 204
    const v0, 0x7f0c03fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 206
    if-eqz p4, :cond_0

    .line 207
    const v0, 0x7f020148

    invoke-virtual {p5, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_4

    .line 210
    :cond_2
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 211
    if-eqz p1, :cond_3

    const v0, 0x7f0c03fc

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 214
    if-eqz p4, :cond_0

    .line 215
    const v0, 0x7f02014a

    invoke-virtual {p5, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 211
    :cond_3
    const v0, 0x7f0c03fb

    goto :goto_1

    .line 219
    :cond_4
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 220
    const v0, 0x7f0c03fa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    if-eqz p4, :cond_0

    .line 223
    const v0, 0x7f020149

    invoke-virtual {p5, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.mobilesecurity.app.firewall.core.WIDGET_COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    const-string v2, "enabled"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    invoke-static {p2, v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 284
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/avast/android/mobilesecurity/t;)Z
    .locals 2
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/t;->au()I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->c(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v10, 0x800

    const/4 v4, 0x0

    .line 118
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 120
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Lcom/avast/android/mobilesecurity/t;)Z

    move-result v1

    .line 121
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aG()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v3, v6

    .line 123
    :goto_0
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->am()Z

    move-result v2

    .line 124
    const-string v5, "WidgetControlProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WidgetControlProvider: Updating widget problems="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expired="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", malware="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/avast/android/mobilesecurity/app/home/StartActivity;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-static {p0, v4, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 131
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlBigActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    invoke-static {p0, v4, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 136
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v9, "widgetScan"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    invoke-static {p0, v4, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 152
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const-string v5, "com.avast.android.mobilesecurity.action.TOGGLE_FIREWALL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-static {p0, v4, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 158
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v10, 0x7f0300a9

    invoke-direct {v5, v6, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 159
    const v6, 0x7f0701fa

    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 160
    invoke-static {p0, v5}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    move-object v0, p0

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;ZZZZLandroid/widget/RemoteViews;)V

    .line 167
    :goto_1
    const v0, 0x7f0701ef

    invoke-virtual {v5, v0, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    const v0, 0x7f0701f7

    invoke-virtual {v5, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 169
    const v0, 0x7f0701f4

    invoke-virtual {v5, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 171
    return-object v5

    :cond_1
    move v3, v4

    .line 121
    goto/16 :goto_0

    .line 163
    :cond_2
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0300a8

    invoke-direct {v5, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v0, p0

    move v4, v6

    .line 164
    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;ZZZZLandroid/widget/RemoteViews;)V

    goto :goto_1
.end method

.method private d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f07002e

    .line 245
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 247
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a:Landroid/os/Handler$Callback;

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/widget/i;

    invoke-direct {v2, p0, v0, p1}, Lcom/avast/android/mobilesecurity/app/widget/i;-><init>(Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V

    invoke-static {v1, v3, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a:Landroid/os/Handler$Callback;

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/avast/android/generic/ui/PasswordActivity;->call(Landroid/content/Context;I)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "WidgetControlProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WidgetControlProvider: Intent received, action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    :cond_0
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-static {p1, p2}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 107
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    return-void

    .line 104
    :cond_2
    const-string v1, "com.avast.android.mobilesecurity.action.TOGGLE_FIREWALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const-string v0, "WidgetControlProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetControlProvider: Update received, ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lcom/avast/android/mobilesecurity/app/widget/j;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/avast/android/mobilesecurity/app/widget/j;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/widget/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method
