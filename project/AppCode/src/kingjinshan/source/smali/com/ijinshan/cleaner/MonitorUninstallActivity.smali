.class public Lcom/ijinshan/cleaner/MonitorUninstallActivity;
.super Landroid/app/Activity;
.source "MonitorUninstallActivity.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/ArrayList;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "MonitorUninstallActivity_type_dlg"

    sput-object v0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    .line 42
    const-string v0, "unst_other"

    sput-object v0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->b:Ljava/lang/String;

    .line 43
    const-string v0, "unst_self"

    sput-object v0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->c:Ljava/lang/String;

    .line 44
    const-string v0, "app_details"

    sput-object v0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->e:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->f:Z

    .line 287
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4480

    .line 129
    const/4 v0, 0x0

    .line 130
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    .line 132
    const-string v0, "KB"

    .line 133
    long-to-double v1, p0

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 134
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_0

    .line 135
    const-string v0, "MB"

    .line 136
    div-float/2addr v1, v5

    .line 138
    :cond_0
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    .line 139
    const-string v0, "GB"

    .line 140
    div-float/2addr v1, v5

    .line 145
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_2
    long-to-float v1, p0

    goto :goto_0

    .line 150
    :cond_3
    const-string v0, "B"

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic a(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 158
    const v1, 0x7f0b08e5

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 159
    const v1, 0x7f0b08e6

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 160
    new-instance v1, Lcom/ijinshan/cleaner/ak;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    .line 161
    const v1, 0x7f0b08e7

    new-instance v2, Lcom/ijinshan/cleaner/ad;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ad;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 170
    const v1, 0x7f0b08e8

    new-instance v2, Lcom/ijinshan/cleaner/ae;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ae;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 178
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 179
    return-void
.end method

.method static synthetic a(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MonitorUninstallActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x4480

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    const-string v1, "filelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->e:Ljava/util/ArrayList;

    .line 68
    const-string v1, "size"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 69
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v3, 0x7f0b00bf

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v3, 0x7f0b028a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v1, 0x0

    const-wide/16 v7, 0x400

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    const-string v1, "KB"

    long-to-double v5, v5

    const-wide/high16 v7, 0x4090

    div-double/2addr v5, v7

    double-to-float v5, v5

    cmpl-float v6, v5, v9

    if-ltz v6, :cond_3

    const-string v1, "MB"

    div-float/2addr v5, v9

    move v10, v5

    move-object v5, v1

    move v1, v10

    :goto_0
    cmpl-float v6, v1, v9

    if-ltz v6, :cond_0

    const-string v5, "GB"

    div-float/2addr v1, v9

    :cond_0
    :goto_1
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "#0.00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    float-to-double v8, v1

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    new-instance v0, Lcom/ijinshan/cleaner/ak;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d6

    new-instance v1, Lcom/ijinshan/cleaner/ab;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ab;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d5

    new-instance v1, Lcom/ijinshan/cleaner/ac;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ac;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 71
    return-void

    .line 70
    :cond_1
    long-to-float v5, v5

    move v10, v5

    move-object v5, v1

    move v1, v10

    goto :goto_1

    :cond_2
    const-string v1, "B"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move v10, v5

    move-object v5, v1

    move v1, v10

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 309
    const v0, 0x7f0802fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 311
    new-instance v1, Lcom/ijinshan/cleaner/aj;

    invoke-direct {v1, p0, p2}, Lcom/ijinshan/cleaner/aj;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 327
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 78
    array-length v1, v0

    .line 79
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 80
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Ljava/io/File;)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v9, 0x4480

    .line 87
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v3}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 88
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 89
    const v1, 0x7f0b028a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x400

    cmp-long v7, v4, v7

    if-ltz v7, :cond_1

    const-string v6, "KB"

    long-to-double v4, v4

    const-wide/high16 v7, 0x4090

    div-double/2addr v4, v7

    double-to-float v4, v4

    cmpl-float v5, v4, v9

    if-ltz v5, :cond_3

    const-string v5, "MB"

    div-float/2addr v4, v9

    :goto_0
    cmpl-float v6, v4, v9

    if-ltz v6, :cond_0

    const-string v5, "GB"

    div-float/2addr v4, v9

    :cond_0
    :goto_1
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "#0.00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    float-to-double v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 91
    new-instance v1, Lcom/ijinshan/cleaner/ak;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    .line 92
    const v1, 0x7f0b00d6

    new-instance v2, Lcom/ijinshan/cleaner/ab;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ab;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 99
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/cleaner/ac;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ac;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 111
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 112
    return-void

    .line 89
    :cond_1
    long-to-float v4, v4

    move-object v5, v6

    goto :goto_1

    :cond_2
    const-string v4, "B"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move-object v5, v6

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 185
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v3

    .line 187
    new-instance v0, Lcom/ijinshan/cleaner/af;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/af;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    .line 193
    new-instance v0, Lcom/ijinshan/cleaner/ak;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    .line 194
    const v0, 0x7f0802fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    const v1, 0x7f0b0800

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    const v0, 0x7f0802fd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 200
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 202
    const v1, 0x7f0802fe

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v4, Lcom/ijinshan/cleaner/aj;

    invoke-direct {v4, p0, v0}, Lcom/ijinshan/cleaner/aj;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    const v1, 0x7f080222

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    new-instance v2, Lcom/ijinshan/cleaner/ag;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ag;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v1, Lcom/ijinshan/cleaner/ah;

    invoke-direct {v1, p0, v0}, Lcom/ijinshan/cleaner/ah;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;Landroid/widget/EditText;)V

    .line 244
    const v0, 0x7f0b03a9

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 245
    const v0, 0x7f0b0683

    new-instance v1, Lcom/ijinshan/cleaner/ai;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ai;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 254
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 255
    return-void
.end method

.method private static b(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 340
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 342
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 344
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string v1, "MonitorUninstallActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const v4, 0x7f0b04ee

    const/4 v7, 0x0

    const v6, 0x7f0b03ca

    const/4 v5, 0x0

    .line 258
    .line 259
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 265
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    :cond_0
    invoke-virtual {p0, v4}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 267
    const v0, 0x7f0b0763

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 268
    invoke-virtual {p0, v6}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 283
    :goto_0
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 285
    return-void

    .line 270
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    :cond_2
    invoke-virtual {p0, v4}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 272
    const v0, 0x7f0b0764

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 273
    invoke-virtual {p0, v6}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0

    .line 276
    :cond_3
    const v0, 0x7f0b0219

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 277
    const v0, 0x7f0b07f9

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 280
    invoke-virtual {p0, v6}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method static synthetic c(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f0b04ee

    const/4 v7, 0x0

    const v6, 0x7f0b03ca

    const/4 v5, 0x0

    .line 38
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0763

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v6}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    :goto_0
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0764

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v6}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0

    :cond_3
    const v0, 0x7f0b0219

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b07f9

    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v6}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->finish()V

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method static synthetic d(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .parameter

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a(Ljava/io/File;)V

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x4480

    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    :cond_0
    iput-boolean v9, p0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->f:Z

    .line 56
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->e:Ljava/util/ArrayList;

    const-string v1, "size"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v3, 0x7f0b00bf

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v3, 0x7f0b028a

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x400

    cmp-long v5, v0, v5

    if-ltz v5, :cond_3

    const-string v5, "KB"

    long-to-double v0, v0

    const-wide/high16 v6, 0x4090

    div-double/2addr v0, v6

    double-to-float v0, v0

    cmpl-float v1, v0, v8

    if-ltz v1, :cond_7

    const-string v1, "MB"

    div-float/2addr v0, v8

    :goto_0
    cmpl-float v5, v0, v8

    if-ltz v5, :cond_1

    const-string v1, "GB"

    div-float/2addr v0, v8

    :cond_1
    :goto_1
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    float-to-double v7, v0

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p0, v3, v4}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    new-instance v0, Lcom/ijinshan/cleaner/ak;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d6

    new-instance v1, Lcom/ijinshan/cleaner/ab;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ab;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b00d5

    new-instance v1, Lcom/ijinshan/cleaner/ac;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ac;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 63
    :cond_2
    :goto_3
    return-void

    .line 56
    :cond_3
    long-to-float v0, v0

    move-object v1, v7

    goto :goto_1

    :cond_4
    const-string v0, "B"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 57
    :cond_5
    sget-object v0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b08e5

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b08e6

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    new-instance v1, Lcom/ijinshan/cleaner/ak;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b08e7

    new-instance v2, Lcom/ijinshan/cleaner/ad;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ad;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b08e8

    new-instance v2, Lcom/ijinshan/cleaner/ae;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ae;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_3

    .line 59
    :cond_6
    sget-object v0, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    move-result-object v3

    new-instance v0, Lcom/ijinshan/cleaner/af;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/af;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/keniu/security/util/aq;

    new-instance v0, Lcom/ijinshan/cleaner/ak;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/ak;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v3, v0}, Lcom/keniu/security/util/aq;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0802fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0b0800

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0802fd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    const v1, 0x7f0802fe

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v4, Lcom/ijinshan/cleaner/aj;

    invoke-direct {v4, p0, v0}, Lcom/ijinshan/cleaner/aj;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f080222

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Lcom/ijinshan/cleaner/ag;

    invoke-direct {v2, p0}, Lcom/ijinshan/cleaner/ag;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/ijinshan/cleaner/ah;

    invoke-direct {v1, p0, v0}, Lcom/ijinshan/cleaner/ah;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;Landroid/widget/EditText;)V

    const v0, 0x7f0b03a9

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0683

    new-instance v1, Lcom/ijinshan/cleaner/ai;

    invoke-direct {v1, p0}, Lcom/ijinshan/cleaner/ai;-><init>(Lcom/ijinshan/cleaner/MonitorUninstallActivity;)V

    invoke-virtual {v3, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto/16 :goto_3

    :cond_7
    move-object v1, v5

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d()V

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
