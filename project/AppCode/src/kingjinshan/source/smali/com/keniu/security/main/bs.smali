.class public abstract Lcom/keniu/security/main/bs;
.super Ljava/lang/Object;
.source "MainModule.java"


# static fields
.field public static final a:Ljava/lang/String; = "main"

.field public static final b:Ljava/lang/String; = "process_left"

.field public static final c:Ljava/lang/String; = "process_right"

.field public static final d:Ljava/lang/String; = "description"

.field public static final e:Ljava/lang/String; = "param1"

.field public static final f:Ljava/lang/String; = "param2"

.field public static final g:Ljava/lang/String; = "param3"

.field public static final h:Ljava/lang/String; = "param4"

.field public static final i:Ljava/lang/String; = "param5"

.field public static final j:Ljava/lang/String; = "param6"

.field public static final k:Ljava/lang/String; = "param7"

.field public static final l:Ljava/lang/String; = "param8"

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x0

.field public static final t:I = 0x1


# instance fields
.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/main/bs;->u:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/keniu/security/main/bs;->u:I

    return v0
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/keniu/security/main/bs;->u:I

    .line 57
    return-void
.end method

.method public abstract a(Landroid/content/Context;I)V
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()V
.end method
