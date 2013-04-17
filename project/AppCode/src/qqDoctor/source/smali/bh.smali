.class public Lbh;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:I

.field public static e:I

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field protected h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lbh;->a:Z

    sput-boolean v1, Lbh;->b:Z

    sput-boolean v1, Lbh;->c:Z

    const/4 v0, 0x2

    sput v0, Lbh;->d:I

    sput v1, Lbh;->e:I

    sget-object v0, Lbj;->b:Ljava/lang/String;

    sput-object v0, Lbh;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbj;->a:Ljava/lang/String;

    iput-object v0, p0, Lbh;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lbh;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lbh;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lbh;->c:Z

    return v0
.end method

.method public static d()I
    .locals 1

    sget v0, Lbh;->d:I

    return v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lbh;->b:Z

    return v0
.end method
