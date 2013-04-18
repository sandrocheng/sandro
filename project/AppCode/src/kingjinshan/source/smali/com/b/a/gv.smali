.class public final enum Lcom/b/a/gv;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# static fields
.field public static final enum a:Lcom/b/a/gv;

.field public static final enum b:Lcom/b/a/gv;

.field public static final enum c:Lcom/b/a/gv;

.field public static final enum d:Lcom/b/a/gv;

.field public static final enum e:Lcom/b/a/gv;

.field public static final enum f:Lcom/b/a/gv;

.field public static final enum g:Lcom/b/a/gv;

.field public static final enum h:Lcom/b/a/gv;

.field public static final enum i:Lcom/b/a/gv;

.field private static final synthetic k:[Lcom/b/a/gv;


# instance fields
.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->a:Lcom/b/a/gv;

    .line 79
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->b:Lcom/b/a/gv;

    .line 80
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->c:Lcom/b/a/gv;

    .line 81
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->d:Lcom/b/a/gv;

    .line 82
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->e:Lcom/b/a/gv;

    .line 83
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->f:Lcom/b/a/gv;

    .line 84
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/b/a/i;->a:Lcom/b/a/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->g:Lcom/b/a/gv;

    .line 85
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->h:Lcom/b/a/gv;

    .line 86
    new-instance v0, Lcom/b/a/gv;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/gv;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    .line 77
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/b/a/gv;

    sget-object v1, Lcom/b/a/gv;->a:Lcom/b/a/gv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/gv;->b:Lcom/b/a/gv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/gv;->c:Lcom/b/a/gv;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/gv;->d:Lcom/b/a/gv;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/gv;->e:Lcom/b/a/gv;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/gv;->f:Lcom/b/a/gv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/gv;->g:Lcom/b/a/gv;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b/a/gv;->h:Lcom/b/a/gv;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/b/a/gv;->i:Lcom/b/a/gv;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/gv;->k:[Lcom/b/a/gv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/b/a/gv;->j:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/b/a/gv;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/gv;
    .locals 1
    .parameter

    .prologue
    .line 77
    const-class v0, Lcom/b/a/gv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/gv;

    return-object p0
.end method

.method public static values()[Lcom/b/a/gv;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/b/a/gv;->k:[Lcom/b/a/gv;

    invoke-virtual {v0}, [Lcom/b/a/gv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/gv;

    return-object v0
.end method
