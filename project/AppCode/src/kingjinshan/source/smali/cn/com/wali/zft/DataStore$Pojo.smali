.class public final Lcn/com/wali/zft/DataStore$Pojo;
.super Ljava/lang/Object;
.source "DataStore.java"


# instance fields
.field private key:Ljava/lang/String;

.field private update:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcn/com/wali/zft/DataStore$Pojo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/wali/zft/DataStore$Pojo;->key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcn/com/wali/zft/DataStore$Pojo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/wali/zft/DataStore$Pojo;->value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcn/com/wali/zft/DataStore$Pojo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcn/com/wali/zft/DataStore$Pojo;->update:J

    return-wide p1
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/com/wali/zft/DataStore$Pojo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdate()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcn/com/wali/zft/DataStore$Pojo;->update:J

    return-wide v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/com/wali/zft/DataStore$Pojo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/wali/zft/DataStore$Pojo;->key:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final setUpdate(J)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lcn/com/wali/zft/DataStore$Pojo;->update:J

    .line 50
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcn/com/wali/zft/DataStore$Pojo;->value:Ljava/lang/String;

    .line 42
    return-void
.end method
