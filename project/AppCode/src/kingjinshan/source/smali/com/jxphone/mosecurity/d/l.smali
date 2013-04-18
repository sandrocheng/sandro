.class public final Lcom/jxphone/mosecurity/d/l;
.super Ljava/lang/Object;
.source "PhoneModelUtils.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/jxphone/mosecurity/d/l;->a:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->a()Z

    move-result v0

    sput-boolean v0, Lcom/jxphone/mosecurity/d/l;->b:Z

    .line 11
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XT800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XT800+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XT806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XT882"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jxphone/mosecurity/d/l;->c:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 15
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 60
    :goto_0
    return v0

    .line 24
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    const-string v1, "MI-ONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 29
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 34
    if-eqz v0, :cond_2

    .line 36
    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 38
    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 43
    if-eqz v0, :cond_3

    .line 45
    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 47
    goto :goto_0

    .line 51
    :cond_3
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 52
    if-eqz v0, :cond_4

    .line 54
    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 56
    goto :goto_0

    .line 60
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 75
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 82
    if-eqz v0, :cond_1

    .line 83
    const-string v1, "XT800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "XT800+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "XT806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "XT882"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 121
    sget-boolean v0, Lcom/jxphone/mosecurity/d/l;->c:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 136
    :goto_0
    return v0

    .line 124
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 129
    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "c8500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "c8650"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 143
    const-string v2, "C8800"

    .line 144
    const-string v3, "C8650"

    .line 146
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x1

    .line 155
    :cond_1
    return v0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/jxphone/mosecurity/d/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/jxphone/mosecurity/d/l;->a:Ljava/lang/String;

    const-string v1, "GT-I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Z
    .locals 2

    .prologue
    .line 97
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "XT800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XT800+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XT806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XT882"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Z
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 163
    const-string v2, "ZTE-T U880"

    .line 164
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 170
    :cond_0
    return v0
.end method
