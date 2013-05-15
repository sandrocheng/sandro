.class public Lcom/google/a/g;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# static fields
.field private static final b:Lcom/google/a/g;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/google/a/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/a/g;-><init>(Z)V

    sput-object v0, Lcom/google/a/g;->b:Lcom/google/a/g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/g;->a:Ljava/util/Map;

    .line 125
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/g;->a:Ljava/util/Map;

    .line 142
    return-void
.end method

.method public static a()Lcom/google/a/g;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/a/g;->b:Lcom/google/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/a/aa;I)Lcom/google/a/t;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/a/g;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/a/h;

    invoke-direct {v1, p1, p2}, Lcom/google/a/h;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/t;

    return-object v0
.end method
