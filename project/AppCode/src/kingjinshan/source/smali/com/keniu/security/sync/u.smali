.class public final enum Lcom/keniu/security/sync/u;
.super Ljava/lang/Enum;
.source "TCONST.java"


# static fields
.field public static final enum a:Lcom/keniu/security/sync/u;

.field public static final enum b:Lcom/keniu/security/sync/u;

.field public static final enum c:Lcom/keniu/security/sync/u;

.field public static final enum d:Lcom/keniu/security/sync/u;

.field public static final enum e:Lcom/keniu/security/sync/u;

.field public static final enum f:Lcom/keniu/security/sync/u;

.field public static final enum g:Lcom/keniu/security/sync/u;

.field private static final synthetic h:[Lcom/keniu/security/sync/u;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    new-instance v0, Lcom/keniu/security/sync/u;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/keniu/security/sync/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/sync/u;->a:Lcom/keniu/security/sync/u;

    .line 144
    new-instance v0, Lcom/keniu/security/sync/u;

    const-string v1, "PICTURE"

    invoke-direct {v0, v1, v4}, Lcom/keniu/security/sync/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/sync/u;->b:Lcom/keniu/security/sync/u;

    .line 145
    new-instance v0, Lcom/keniu/security/sync/u;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v5}, Lcom/keniu/security/sync/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/sync/u;->c:Lcom/keniu/security/sync/u;

    .line 146
    new-instance v0, Lcom/keniu/security/sync/u;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/keniu/security/sync/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/sync/u;->d:Lcom/keniu/security/sync/u;

    .line 147
    new-instance v0, Lcom/keniu/security/sync/u;

    const-string v1, "DOCUMENT"

    invoke-direct {v0, v1, v7}, Lcom/keniu/security/sync/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/sync/u;->e:Lcom/keniu/security/sync/u;

    .line 148
    new-instance v0, Lcom/keniu/security/sync/u;

    const-string v1, "FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/sync/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/sync/u;->f:Lcom/keniu/security/sync/u;

    .line 149
    new-instance v0, Lcom/keniu/security/sync/u;

    const-string v1, "RECYCLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/sync/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/keniu/security/sync/u;->g:Lcom/keniu/security/sync/u;

    .line 142
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/keniu/security/sync/u;

    sget-object v1, Lcom/keniu/security/sync/u;->a:Lcom/keniu/security/sync/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/keniu/security/sync/u;->b:Lcom/keniu/security/sync/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/keniu/security/sync/u;->c:Lcom/keniu/security/sync/u;

    aput-object v1, v0, v5

    sget-object v1, Lcom/keniu/security/sync/u;->d:Lcom/keniu/security/sync/u;

    aput-object v1, v0, v6

    sget-object v1, Lcom/keniu/security/sync/u;->e:Lcom/keniu/security/sync/u;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/keniu/security/sync/u;->f:Lcom/keniu/security/sync/u;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/keniu/security/sync/u;->g:Lcom/keniu/security/sync/u;

    aput-object v2, v0, v1

    sput-object v0, Lcom/keniu/security/sync/u;->h:[Lcom/keniu/security/sync/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/keniu/security/sync/u;
    .locals 1
    .parameter

    .prologue
    .line 142
    const-class v0, Lcom/keniu/security/sync/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/u;

    return-object p0
.end method

.method public static values()[Lcom/keniu/security/sync/u;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/keniu/security/sync/u;->h:[Lcom/keniu/security/sync/u;

    invoke-virtual {v0}, [Lcom/keniu/security/sync/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/keniu/security/sync/u;

    return-object v0
.end method
