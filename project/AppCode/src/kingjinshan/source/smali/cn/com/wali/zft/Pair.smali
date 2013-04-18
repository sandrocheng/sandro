.class final Lcn/com/wali/zft/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field key:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/com/wali/zft/Pair;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/wali/zft/Pair;->value:Ljava/lang/Object;

    return-object p1
.end method
