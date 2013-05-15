.class public enum Lcom/google/a/ar;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# static fields
.field public static final enum a:Lcom/google/a/ar;

.field public static final enum b:Lcom/google/a/ar;

.field public static final enum c:Lcom/google/a/ar;

.field public static final enum d:Lcom/google/a/ar;

.field public static final enum e:Lcom/google/a/ar;

.field public static final enum f:Lcom/google/a/ar;

.field public static final enum g:Lcom/google/a/ar;

.field public static final enum h:Lcom/google/a/ar;

.field public static final enum i:Lcom/google/a/ar;

.field public static final enum j:Lcom/google/a/ar;

.field public static final enum k:Lcom/google/a/ar;

.field public static final enum l:Lcom/google/a/ar;

.field public static final enum m:Lcom/google/a/ar;

.field public static final enum n:Lcom/google/a/ar;

.field public static final enum o:Lcom/google/a/ar;

.field public static final enum p:Lcom/google/a/ar;

.field public static final enum q:Lcom/google/a/ar;

.field public static final enum r:Lcom/google/a/ar;

.field private static final synthetic u:[Lcom/google/a/ar;


# instance fields
.field private final s:Lcom/google/a/aw;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/a/aw;->d:Lcom/google/a/aw;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->a:Lcom/google/a/ar;

    .line 109
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/a/aw;->c:Lcom/google/a/aw;

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->b:Lcom/google/a/ar;

    .line 110
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/a/aw;->b:Lcom/google/a/aw;

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->c:Lcom/google/a/ar;

    .line 111
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/a/aw;->b:Lcom/google/a/aw;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->d:Lcom/google/a/ar;

    .line 112
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lcom/google/a/aw;->a:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->e:Lcom/google/a/ar;

    .line 113
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/a/aw;->b:Lcom/google/a/aw;

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->f:Lcom/google/a/ar;

    .line 114
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/a/aw;->a:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->g:Lcom/google/a/ar;

    .line 115
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/a/aw;->e:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->h:Lcom/google/a/ar;

    .line 116
    new-instance v0, Lcom/google/a/as;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/a/aw;->f:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/a/as;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->i:Lcom/google/a/ar;

    .line 119
    new-instance v0, Lcom/google/a/at;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/a/aw;->i:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/a/at;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->j:Lcom/google/a/ar;

    .line 122
    new-instance v0, Lcom/google/a/au;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/a/aw;->i:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/a/au;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->k:Lcom/google/a/ar;

    .line 125
    new-instance v0, Lcom/google/a/av;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/a/aw;->g:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/a/av;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->l:Lcom/google/a/ar;

    .line 128
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/a/aw;->a:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->m:Lcom/google/a/ar;

    .line 129
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/a/aw;->h:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->n:Lcom/google/a/ar;

    .line 130
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/a/aw;->a:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->o:Lcom/google/a/ar;

    .line 131
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/a/aw;->b:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->p:Lcom/google/a/ar;

    .line 132
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/a/aw;->a:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->q:Lcom/google/a/ar;

    .line 133
    new-instance v0, Lcom/google/a/ar;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/a/aw;->b:Lcom/google/a/aw;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    sput-object v0, Lcom/google/a/ar;->r:Lcom/google/a/ar;

    .line 107
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/a/ar;

    sget-object v1, Lcom/google/a/ar;->a:Lcom/google/a/ar;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/ar;->b:Lcom/google/a/ar;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/ar;->c:Lcom/google/a/ar;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/ar;->d:Lcom/google/a/ar;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/google/a/ar;->e:Lcom/google/a/ar;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/a/ar;->f:Lcom/google/a/ar;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/google/a/ar;->g:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/a/ar;->h:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/a/ar;->i:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/a/ar;->j:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/a/ar;->k:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/a/ar;->l:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/a/ar;->m:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/a/ar;->n:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/a/ar;->o:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/a/ar;->p:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/a/ar;->q:Lcom/google/a/ar;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/a/ar;->r:Lcom/google/a/ar;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/ar;->u:[Lcom/google/a/ar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/a/aw;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lcom/google/a/ar;->s:Lcom/google/a/aw;

    .line 137
    iput p4, p0, Lcom/google/a/ar;->t:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/a/aw;ILcom/google/a/aq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/ar;-><init>(Ljava/lang/String;ILcom/google/a/aw;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 107
    const-class v0, Lcom/google/a/ar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/ar;

    return-object v0
.end method

.method public static values()[Lcom/google/a/ar;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/a/ar;->u:[Lcom/google/a/ar;

    invoke-virtual {v0}, [Lcom/google/a/ar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/ar;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/a/aw;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/a/ar;->s:Lcom/google/a/aw;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/a/ar;->t:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method
