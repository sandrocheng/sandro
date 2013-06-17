.class public final La/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final b:La/a/g;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/g;-><init>(B)V

    sput-object v0, La/a/g;->b:La/a/g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/g;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, La/a/g;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()La/a/g;
    .locals 1

    sget-object v0, La/a/g;->b:La/a/g;

    return-object v0
.end method
