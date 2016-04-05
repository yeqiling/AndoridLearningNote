.class Lde/measite/smack/AndroidDebugger$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/util/ReaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/measite/smack/AndroidDebugger;->createDebug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/measite/smack/AndroidDebugger;


# direct methods
.method constructor <init>(Lde/measite/smack/AndroidDebugger;)V
    .locals 0

    iput-object p1, p0, Lde/measite/smack/AndroidDebugger$1;->this$0:Lde/measite/smack/AndroidDebugger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)V
    .locals 4

    const-string v1, "SMACK"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$1;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$0(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " RCV from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger$1;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$1;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger$1;->this$0:Lde/measite/smack/AndroidDebugger;

    #getter for: Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v2}, Lde/measite/smack/AndroidDebugger;->access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
