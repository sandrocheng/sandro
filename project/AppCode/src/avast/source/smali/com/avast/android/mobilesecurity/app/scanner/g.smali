.class public Lcom/avast/android/mobilesecurity/app/scanner/g;
.super Lcom/avast/android/mobilesecurity/app/scanner/af;
.source "OnDemandScannerScanTask.java"


# instance fields
.field private final n:Landroid/content/pm/PackageInfo;

.field private final o:I


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/scanner/af;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V

    .line 43
    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->n:Landroid/content/pm/PackageInfo;

    .line 45
    const-string v0, "flags"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 47
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->o:I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->o:I

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0b0007

    return v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 55
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->n:Landroid/content/pm/PackageInfo;

    .line 56
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iput v11, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    .line 59
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iput v10, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iput v10, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 62
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iput v10, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 63
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/g;->i()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->o:I

    or-int/lit8 v4, v4, 0x20

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;

    move-result-object v5

    .line 68
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->c:Lcom/avast/android/mobilesecurity/app/scanner/o;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V

    .line 70
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On demand scanning error for package ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On demand scanning error for package ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const-class v2, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c020e

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/scanner/g;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->Q()Z

    move-result v0

    return v0
.end method
