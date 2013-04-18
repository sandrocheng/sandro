.class public final Lcom/jxphone/mosecurity/c/l;
.super Ljava/lang/Object;
.source "Sms.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:I = -0x2

.field public static final b:I = -0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field private static final o:J = 0x2474d551cbc4701dL


# instance fields
.field private p:I

.field private q:I

.field private r:Lcom/jxphone/mosecurity/c/k;

.field private s:Ljava/lang/String;

.field private t:J

.field private u:I

.field private v:I

.field private w:Lcom/jxphone/mosecurity/c/c;

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/jxphone/mosecurity/c/k;->a:Lcom/jxphone/mosecurity/c/k;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    .line 47
    const/4 v0, -0x2

    iput v0, p0, Lcom/jxphone/mosecurity/c/l;->v:I

    .line 48
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->a:Lcom/jxphone/mosecurity/c/c;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/c/l;->x:Z

    .line 54
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    .locals 3
    .parameter

    .prologue
    .line 162
    new-instance v0, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 163
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/l;->p:I

    .line 164
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/l;->s:Ljava/lang/String;

    .line 166
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jxphone/mosecurity/c/l;->t:J

    .line 167
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/l;->v:I

    .line 168
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/l;->u:I

    .line 169
    invoke-static {}, Lcom/jxphone/mosecurity/c/c;->values()[Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    .line 170
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/jxphone/mosecurity/c/l;
    .locals 3
    .parameter

    .prologue
    .line 174
    new-instance v0, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 175
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/l;->p:I

    .line 176
    const-string v1, "address"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 177
    const-string v1, "body"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/l;->s:Ljava/lang/String;

    .line 178
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jxphone/mosecurity/c/l;->t:J

    .line 179
    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/l;->v:I

    .line 180
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/l;->u:I

    .line 181
    invoke-static {}, Lcom/jxphone/mosecurity/c/c;->values()[Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    const-string v2, "list_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    .line 182
    return-object v0
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/c/l;->x:Z

    .line 58
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/c/l;->x:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/jxphone/mosecurity/c/l;->p:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/c/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/jxphone/mosecurity/c/l;->p:I

    .line 69
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/l;->t:J

    .line 91
    return-void
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    .line 99
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/jxphone/mosecurity/c/k;

    invoke-direct {v0, p1}, Lcom/jxphone/mosecurity/c/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    .line 77
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput p1, p0, Lcom/jxphone/mosecurity/c/l;->u:I

    .line 107
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/l;->s:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/l;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput p1, p0, Lcom/jxphone/mosecurity/c/l;->v:I

    .line 115
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/l;->t:J

    return-wide v0
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput p1, p0, Lcom/jxphone/mosecurity/c/l;->q:I

    .line 159
    return-void
.end method

.method public final e()Lcom/jxphone/mosecurity/c/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 127
    instance-of v0, p1, Lcom/jxphone/mosecurity/c/l;

    if-eqz v0, :cond_2

    .line 128
    check-cast p1, Lcom/jxphone/mosecurity/c/l;

    .line 129
    iget-object v0, p1, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p1, Lcom/jxphone/mosecurity/c/l;->t:J

    iget-wide v2, p0, Lcom/jxphone/mosecurity/c/l;->t:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/jxphone/mosecurity/c/l;->u:I

    iget v1, p0, Lcom/jxphone/mosecurity/c/l;->u:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/jxphone/mosecurity/c/l;->v:I

    iget v1, p0, Lcom/jxphone/mosecurity/c/l;->v:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/jxphone/mosecurity/c/l;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/l;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    move v0, v4

    .line 129
    goto :goto_0

    :cond_2
    move v0, v4

    .line 137
    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/jxphone/mosecurity/c/l;->u:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/jxphone/mosecurity/c/l;->v:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/l;->r:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jxphone/mosecurity/c/l;->t:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jxphone/mosecurity/c/l;->u:I

    add-int/2addr v0, v1

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/l;->w:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jxphone/mosecurity/c/l;->v:I

    add-int/2addr v0, v1

    .line 149
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/l;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/jxphone/mosecurity/c/l;->q:I

    return v0
.end method
