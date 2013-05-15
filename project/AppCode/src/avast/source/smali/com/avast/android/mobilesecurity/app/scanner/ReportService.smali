.class public Lcom/avast/android/mobilesecurity/app/scanner/ReportService;
.super Lcom/avast/android/generic/NotificationIntentService;
.source "ReportService.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/r;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/avast/android/generic/notification/j;

.field private c:Lcom/avast/android/generic/notification/a;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "report service"

    invoke-direct {p0, v0}, Lcom/avast/android/generic/NotificationIntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)Lcom/avast/android/generic/notification/j;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->b:Lcom/avast/android/generic/notification/j;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    const-string v1, "description"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "email"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "infectionType"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0130

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)Lcom/avast/android/generic/notification/a;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->c:Lcom/avast/android/generic/notification/a;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/avast/android/generic/notification/a;
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c0260

    .line 87
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->c:Lcom/avast/android/generic/notification/a;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 91
    const-string v2, "notificationId"

    const v3, 0x7f0b0009

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v2, "uploadInProgress"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    new-instance v1, Lcom/avast/android/generic/notification/AvastPendingIntent;

    sget-object v2, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Lcom/avast/android/generic/notification/s;Landroid/content/Intent;)V

    .line 97
    new-instance v0, Lcom/avast/android/generic/notification/a;

    const-wide/32 v2, 0x7f0b0009

    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/avast/android/generic/notification/a;-><init>(JLjava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f0c0259

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V

    .line 101
    const/4 v1, 0x2

    iput v1, v0, Lcom/avast/android/generic/notification/a;->f:I

    .line 102
    const-wide/16 v1, 0x64

    iput-wide v1, v0, Lcom/avast/android/generic/notification/a;->b:J

    .line 103
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/avast/android/generic/notification/a;->c:J

    .line 104
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->c:Lcom/avast/android/generic/notification/a;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->c:Lcom/avast/android/generic/notification/a;

    return-object v0
.end method

.method public a(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    iget-wide v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 180
    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->d:J

    .line 181
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->a:Landroid/os/Handler;

    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/n;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/scanner/n;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_0
    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0c025d

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 113
    new-instance v4, Lcom/avast/android/mobilesecurity/engine/ab;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/avast/android/mobilesecurity/engine/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;

    .line 116
    const-string v0, "file"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v3, Lcom/avast/android/mobilesecurity/engine/s;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/x;->a(I)Lcom/avast/android/mobilesecurity/engine/x;

    move-result-object v0

    const-string v1, "infectionType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/avast/android/mobilesecurity/engine/s;-><init>(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/io/File;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/io/File;Landroid/content/pm/PackageInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/ac;

    move-result-object v0

    .line 141
    :goto_0
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->a:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/l;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/l;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :goto_1
    return-void

    .line 120
    :cond_0
    const-string v0, "package"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v3, Lcom/avast/android/mobilesecurity/engine/s;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/x;->a(I)Lcom/avast/android/mobilesecurity/engine/x;

    move-result-object v0

    const-string v1, "infectionType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/avast/android/mobilesecurity/engine/s;-><init>(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 127
    new-instance v1, Ljava/io/File;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/io/File;Landroid/content/pm/PackageInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/ac;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ac;->d:Lcom/avast/android/mobilesecurity/engine/ac;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find packageinfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ah;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v1

    const-string v2, "infectionType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "desiredSite"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, v4}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/engine/ab;)Lcom/avast/android/mobilesecurity/engine/ac;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 153
    const-string v3, "notificationId"

    const v4, 0x7f0b000a

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v3, "submitResult"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/ac;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v1, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 159
    new-instance v2, Lcom/avast/android/generic/notification/AvastPendingIntent;

    sget-object v3, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    invoke-direct {v2, v3, v1}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Lcom/avast/android/generic/notification/s;Landroid/content/Intent;)V

    .line 160
    new-instance v1, Lcom/avast/android/generic/notification/a;

    const-wide/32 v3, 0x7f0b000a

    invoke-virtual {p0, v8}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/avast/android/generic/notification/a;-><init>(JLjava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0, v8}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ai;->a(Lcom/avast/android/mobilesecurity/engine/ac;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v2}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V

    .line 164
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->a:Landroid/os/Handler;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/m;

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/m;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ReportService;Lcom/avast/android/generic/notification/a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/avast/android/generic/NotificationIntentService;->onCreate()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->a:Landroid/os/Handler;

    .line 82
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ReportService;->b:Lcom/avast/android/generic/notification/j;

    .line 83
    return-void
.end method
