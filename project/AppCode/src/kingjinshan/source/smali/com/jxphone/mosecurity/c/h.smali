.class public final Lcom/jxphone/mosecurity/c/h;
.super Ljava/lang/Object;
.source "PackPermission.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:I = 0x6

.field public static final b:I = 0x5

.field public static final c:I = 0x4

.field public static final d:I = 0x3

.field public static final e:I = 0x2

.field public static final f:I = 0x1

.field public static final g:I = 0x0

.field public static final h:I = -0x1

.field public static final i:I = -0x2

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field private static final s:J = -0x5a804acb0bfbb9f5L


# instance fields
.field public n:I

.field public o:Ljava/util/List;

.field private t:Landroid/content/pm/PackageInfo;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:I

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/jxphone/mosecurity/c/h;->b()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/h;->o:Ljava/util/List;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/jxphone/mosecurity/c/h;->b()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/h;->t:Landroid/content/pm/PackageInfo;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jxphone/mosecurity/c/h;->n:I

    .line 64
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/h;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method private a(Lcom/jxphone/mosecurity/c/h;)I
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/h;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/jxphone/mosecurity/c/h;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/h;->t:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/h;->t:Landroid/content/pm/PackageInfo;

    .line 106
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/h;->t:Landroid/content/pm/PackageInfo;

    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/jxphone/mosecurity/c/h;->b()V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/h;->u:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Lcom/jxphone/mosecurity/c/h;->v:I

    .line 82
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/h;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/jxphone/mosecurity/c/h;->u:Landroid/graphics/drawable/Drawable;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/jxphone/mosecurity/c/h;->v:I

    .line 89
    iput-object v1, p0, Lcom/jxphone/mosecurity/c/h;->w:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/h;->w:Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/h;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/jxphone/mosecurity/c/h;->v:I

    return v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/jxphone/mosecurity/c/h;

    iget-object v0, p0, Lcom/jxphone/mosecurity/c/h;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/jxphone/mosecurity/c/h;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
